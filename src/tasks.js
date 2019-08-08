$(document).ready(function () {
    window.app = {
        state: {
            count: 0,
        },
    };

    $('head title').text($('h1.title').text());

    const foo = function () {
        alert('Bingo!');
    };

    function delay(time) {
        setTimeout(() => {
            this.call();
        }, time);
    }

    function bar() {
        alert('WoW!');
    }

    foo.delay = delay;
    bar.delay = delay;

    $('#foo').on('click', () => {
        foo.delay(300);
    });
    $('#bar').on('click', () => {
        bar.delay(600);
    });
});
