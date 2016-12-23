function runClipboard() {
  new Clipboard(".btn-clipboard");
}

// Turbolinks ready
$(runClipboard);
$(document).on('turbolinks:load', runClipboard)