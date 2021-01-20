const command = 'speedtest --simple --no-download | sed -n \'1 p\' 2>/dev/null';

const refreshFrequency = 600000; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    left: '890px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

const initialState = { output: 'Ping: 0.00 ms' };

function render({ output }) {
    return <div>{output}</div>;
};

export {command, refreshFrequency, className, initialState, render}