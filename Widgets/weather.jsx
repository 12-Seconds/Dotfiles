const command = 'ansiweather -w false -h false -s false -d false -a false -l dubai -p false -i false | cut -c 20-';

const refreshFrequency = 600000; // ms

const className = {
    color: '#fff',
    font: '17px Iosevka',
    right: '397px',
    top: '12px',
    WebkitFontSmoothing: 'antialiased',
};

const initialState = {output: '00 °C'};

function render({ output }) {
    return <div>Weather: {output}</div>;
};

export {command, refreshFrequency, className, initialState, render}