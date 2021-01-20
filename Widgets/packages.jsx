const command = 'brew update > /dev/null 2>&1 && brew outdated 2>/dev/null | wc -l';

const refreshFrequency = 600000; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    right: '183px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

const initialState = { output: '0'};

function render({ output }) {
    return <div>Outdated packages: {output}</div>;
};

export {command, refreshFrequency, className, initialState, render}