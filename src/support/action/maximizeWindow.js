/**
 * Maximize window
*/
module.exports = () => {
    let windowHandle = browser.windowHandle();
    // console.log (JSON.stringify (windowHandle));
    // console.log ( typeof (windowHandle.value));
    // pass windowHandle.value to windowHandleMaximize
    browser.windowHandleMaximize('{' + windowHandle.value + '}');
    // browser.windowHandleMaximize (windowHandle.value);
}