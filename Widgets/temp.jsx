const command = 'osx-cpu-temp';

const refreshFrequency = 500; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    left: '30px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

function render({ output }) {
    return <div>CPU temperature: {output}</div>;
};

export {command, refreshFrequency, className, render}
