
let currentCode = '';
let currentMode = 'variables';
let currentFormat = 'dart';
let exportOptions = {
  dart: {
    stylesCollectionName: 'Styles',
    rootName: 'Variables',
    collectionStructure: 'flat',
    useGoogleFonts: false,
  },
  json: {
    prettyPrint: true,
    stylesCollectionName: 'Styles',
  },
  vector: {
    format: 'canvas',
    stylesClass: false,
  },
};

// Auto-generate code on load
window.addEventListener('load', () => {
  showLoadingState('Generating code...');
  updateTabUI();
  updateExportOptions();
  parent.postMessage({
    pluginMessage: { type: 'generate' }
  }, '*');
});

const tabButtons = document.querySelectorAll('.tab-button');

function updateTabUI() {
  tabButtons.forEach((button) => {
    button.classList.toggle('active', button.dataset.mode === currentMode);
  });

  const variableFormatToggle = document.getElementById('variable-format-toggle');
  const vectorFormatToggle = document.getElementById('vector-format-toggle');
  if (variableFormatToggle) {
    variableFormatToggle.style.display = 'flex';
  }
  if (vectorFormatToggle) {
    vectorFormatToggle.style.display = currentMode === 'vector' ? 'flex' : 'none';
  }

  const formatDart = document.getElementById('format-dart');
  if (formatDart) {
    formatDart.checked = currentFormat === 'dart';
  }
  const formatJson = document.getElementById('format-json');
  if (formatJson) {
    formatJson.checked = currentFormat === 'json';
  }

  const vectorFormatSelect = document.getElementById('vector-format-select');
  if (vectorFormatSelect) {
    vectorFormatSelect.value = exportOptions.vector.format || 'canvas';
  }

  const formatLabel = currentFormat === 'json'
    ? 'JSON'
    : 'Dart';
  document.getElementById('current-format').textContent = formatLabel;
}

tabButtons.forEach((button) => {
  button.addEventListener('click', () => {
    const mode = button.dataset.mode;
    if (!mode || mode === currentMode) {
      return;
    }
    currentMode = mode;
    updateTabUI();
    updateExportOptions();
    regenerateCode();
  });
});

window.onmessage = (event) => {
  const msg = event.data.pluginMessage;

  if (msg.type === 'code-generated') {
    currentCode = msg.code || '';
    document.getElementById('code_container').innerHTML =
      '<pre>' + escapeHtml(currentCode) + '</pre>';
    document.getElementById('copy-btn').style.display = 'block';
  } else if (msg.type === 'no-selection') {
    currentCode = '';
    document.getElementById('code_container').innerHTML =
      `<div class="placeholder">
            <div class="placeholder-content">
              <div>${escapeHtml(msg.message)}</div>
            </div>
          </div>`;
    document.getElementById('copy-btn').style.display = 'none';
  }
};

document.getElementById('copy-btn').addEventListener('click', () => {
  if (currentCode) {
    copyToClipboard(currentCode);
  }
});

function copyToClipboard(text) {
  // Create a textarea element for the copy operation
  // This must be done synchronously within the click handler for Figma plugins
  const textArea = document.createElement('textarea');
  textArea.value = text;
  // Prevent scrolling to bottom of page
  textArea.style.position = 'fixed';
  textArea.style.top = '0';
  textArea.style.left = '0';
  textArea.style.width = '2em';
  textArea.style.height = '2em';
  textArea.style.padding = '0';
  textArea.style.border = 'none';
  textArea.style.outline = 'none';
  textArea.style.boxShadow = 'none';
  textArea.style.background = 'transparent';
  document.body.appendChild(textArea);
  textArea.focus();
  textArea.select();

  try {
    const successful = document.execCommand('copy');
    if (successful) {
      showCopyNotification();
    } else {
      console.error('Copy command was unsuccessful');
      showCopyNotification('Failed to copy');
    }
  } catch (err) {
    console.error('Copy failed:', err);
    showCopyNotification('Failed to copy');
  }

  document.body.removeChild(textArea);
}

function showCopyNotification(message) {
  const notification = document.getElementById('copy-notification');
  notification.textContent = message || 'Code copied to clipboard!';
  notification.classList.add('show');
  setTimeout(() => {
    notification.classList.remove('show');
  }, 2000);
}

function showLoadingState(message) {
  document.getElementById('code_container').innerHTML = `
    <div class="loading-state">
      <div class="loading-spinner"></div>
      <div>${escapeHtml(message || 'Generating code...')}</div>
    </div>`;
  document.getElementById('copy-btn').style.display = 'none';
}

function escapeHtml(text) {
  const div = document.createElement('div');
  div.textContent = text;
  return div.innerHTML;
}

// Format change handling
document.querySelectorAll('input[name="format"]').forEach(radio => {
  radio.addEventListener('change', () => {
    currentFormat = radio.value;
    updateTabUI();
    updateExportOptions();
    regenerateCode();
  });
});

function updateExportOptions() {
  const optionsContainer = document.getElementById('export-options');
  const optionsSection = document.getElementById('export-options-section');

  optionsContainer.innerHTML = '';

  if (currentMode === 'variables') {
    optionsSection.style.display = 'block';

    if (currentFormat === 'dart') {
      optionsContainer.innerHTML = `
            <div class="export-option">
              <label for="dart-styles">Styles collection</label>
              <input type="text" id="dart-styles" value="${escapeHtml(exportOptions.dart.stylesCollectionName || '')}">
            </div>
            <div class="export-option">
              <label for="dart-root">Root class</label>
              <input type="text" id="dart-root" value="${escapeHtml(exportOptions.dart.rootName || '')}">
            </div>
            <div class="export-option">
              <label for="dart-structure">Collection structure</label>
              <select id="dart-structure">
                <option value="flat" ${exportOptions.dart.collectionStructure === 'flat' ? 'selected' : ''}>Flat</option>
                <option value="tree" ${exportOptions.dart.collectionStructure === 'tree' ? 'selected' : ''}>Tree</option>
              </select>
            </div>
            <div class="export-option">
              <input type="checkbox" id="dart-google-fonts" ${exportOptions.dart.useGoogleFonts ? 'checked' : ''}>
              <label for="dart-google-fonts">Use Google Fonts</label>
            </div>
          `;

      document.getElementById('dart-styles').addEventListener('input', (e) => {
        exportOptions.dart.stylesCollectionName = e.target.value;
        regenerateCode();
      });

      document.getElementById('dart-root').addEventListener('input', (e) => {
        exportOptions.dart.rootName = e.target.value;
        regenerateCode();
      });

      document.getElementById('dart-structure').addEventListener('change', (e) => {
        exportOptions.dart.collectionStructure = e.target.value;
        regenerateCode();
      });

      document.getElementById('dart-google-fonts').addEventListener('change', (e) => {
        exportOptions.dart.useGoogleFonts = e.target.checked;
        regenerateCode();
      });
    } else if (currentFormat === 'json') {
      optionsContainer.innerHTML = `
            <div class="export-option">
              <label for="json-styles">Styles collection</label>
              <input type="text" id="json-styles" value="${escapeHtml(exportOptions.json.stylesCollectionName || '')}">
            </div>
            <div class="export-option">
              <input type="checkbox" id="json-pretty" ${exportOptions.json.prettyPrint ? 'checked' : ''}>
              <label for="json-pretty">Pretty Print</label>
            </div>
          `;

      document.getElementById('json-styles').addEventListener('input', (e) => {
        exportOptions.json.stylesCollectionName = e.target.value;
        regenerateCode();
      });

      document.getElementById('json-pretty').addEventListener('change', (e) => {
        exportOptions.json.prettyPrint = e.target.checked;
        regenerateCode();
      });
    }
  } else if (currentMode === 'vector') {
    optionsSection.style.display = 'block';
    if (currentFormat === 'dart') {
      optionsContainer.innerHTML = `
            <div class="export-option">
              <input type="checkbox" id="vector-styles" ${exportOptions.vector.stylesClass ? 'checked' : ''}>
              <label for="vector-styles">Generate styles class</label>
            </div>
          `;

      document.getElementById('vector-styles').addEventListener('change', (e) => {
        exportOptions.vector.stylesClass = e.target.checked;
        regenerateCode();
      });
    } else {
      optionsContainer.innerHTML = `
            <div class="export-option">
              <input type="checkbox" id="vector-json-pretty" ${exportOptions.json.prettyPrint ? 'checked' : ''}>
              <label for="vector-json-pretty">Pretty Print</label>
            </div>
          `;

      document.getElementById('vector-json-pretty').addEventListener('change', (e) => {
        exportOptions.json.prettyPrint = e.target.checked;
        regenerateCode();
      });
    }
  }
}

function regenerateCode() {
  showLoadingState('Generating code...');
  const options = currentMode === 'variables'
    ? exportOptions[currentFormat]
    : currentFormat === 'json'
      ? exportOptions.json
      : exportOptions.vector;
  parent.postMessage({
    pluginMessage: {
      type: 'format-changed',
      format: currentFormat,
      mode: currentMode,
      options
    }
  }, '*');
}

const vectorFormatSelect = document.getElementById('vector-format-select');
if (vectorFormatSelect) {
  vectorFormatSelect.addEventListener('change', (e) => {
    exportOptions.vector.format = e.target.value;
    regenerateCode();
  });
}
