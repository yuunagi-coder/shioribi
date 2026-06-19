// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

// jQueryを先に読み込む
import $ from 'jquery'
window.$ = window.jQuery = $;

// Turn.jsを動的に読み込む
import('./custom/turn.min.js')
  .then(() => {
    // Turn.jsが読み込まれた後にカスタムスクリプトを読み込む
    return import("./custom/post");
  })
  .catch(err => {
    console.error('❌ Error loading scripts:', err);
  });

// top.jsは独立しているので通常のimport
import "./custom/top"