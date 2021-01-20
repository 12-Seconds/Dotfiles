const command = 'speedtest --simple --no-upload | sed -n \'2 p\' 2>/dev/null';

const refreshFrequency = 600000; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    left: '440px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

const initialState = {output: 'Download: 00.00 Mbit/s'};

function render({ output }) {
    return <div>{output}</div>;
};

export {command, refreshFrequency, className, initialState, render}