// Resume any AudioContext the wasm module creates on the first user gesture.
// Browsers create AudioContexts in a suspended state until a user interaction;
// raylib/miniaudio's own resume listener can miss the event if the canvas is
// not yet focused (typical on first page load), which leaves audio silent
// until something like fullscreen toggles focus.
(function () {
    var Original = window.AudioContext || window.webkitAudioContext;
    if (!Original) return;

    var contexts = [];
    var Patched = function () {
        var ctx = arguments.length
            ? new Original(arguments[0])
            : new Original();
        contexts.push(ctx);
        return ctx;
    };
    Patched.prototype = Original.prototype;
    window.AudioContext = Patched;
    if (window.webkitAudioContext) window.webkitAudioContext = Patched;

    var resumeAll = function () {
        contexts.forEach(function (ctx) {
            if (ctx.state === "suspended") ctx.resume();
        });
    };

    var events = ["pointerdown", "mousedown", "keydown", "touchstart"];
    events.forEach(function (evt) {
        document.addEventListener(evt, resumeAll, { capture: true, passive: true });
    });
})();
