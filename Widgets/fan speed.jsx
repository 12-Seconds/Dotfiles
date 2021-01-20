const command = 'istats fan --value-only | tail -c +6';

const refreshFrequency = 500; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    left: '265px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

function render({ output }) {
    return <div>Fan speed: {output}</div>;
};

export {command, refreshFrequency, className, render}