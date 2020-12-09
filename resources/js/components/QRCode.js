import React, { Component } from 'react';
import ReactDOM from 'react-dom';

import QRCode from 'qrcode.react';

export default class QrCode extends Component {
    render() {
        return (
            <div className="container">
                <div className="row justify-content-center">
                    <div className="col-md-8">
                        <h1>Hola d</h1>
                        <QRCode value='https://google.com.mx'></QRCode>
                    </div>
                </div>
            </div>
        );
    }
}

if (document.getElementById('qrcode')) {
    ReactDOM.render(<QrCode />, document.getElementById('qrcode'));
}
