const command = 'date +"%T"';

const refreshFrequency = 500; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    left: '1165px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

function render({ output }) {
    return <div>Time: {output}</div>;
};

export {command, refreshFrequency, className, render}