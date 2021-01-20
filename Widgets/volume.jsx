const command = 'echo Volume: && /usr/bin/osascript -e \'set ovol to output volume of (get volume settings)\'';

const refreshFrequency = 500; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    right: '50px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

function render({ output }) {
    return <div>{output}</div>;
};

export {command, refreshFrequency, className, render}