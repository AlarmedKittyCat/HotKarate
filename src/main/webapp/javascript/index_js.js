/**
 * Created by brittmo on 12/29/16.
 */

$(".ad-text").text(function(index, currentText) {
    return currentText.substr(0, 175) + "...";
});

$(".front-page-ad-text").text(function(index, currentText) {
    return currentText.substr(0, 50) + "...";
});