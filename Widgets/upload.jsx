const command = 'speedtest --simple --no-download | sed -n \'3 p\' 2>/dev/null';

const refreshFrequency = 600000; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    left: '673px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

const initialState = {output: 'Upload: 00.00 Mbit/s'};

function render({ output }) {
    return <div>{output}</div>;
};

export {command, refreshFrequency, className, initialState, render}
