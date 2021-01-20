const command = 'yabai -m query --spaces --space | jq .index';

const refreshFrequency = 500; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    right: '1150px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

const initialState = {output: '0'};

function render({ output }) {
    return <div>Workspace: {output}</div>;
};

export {command, refreshFrequency, className, initialState, render}