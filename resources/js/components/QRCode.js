import React, { Component } from 'react';
import ReactDOM from 'react-dom';

import QRCode from 'qrcode.react';

export default class QrCode extends Component {

    render() {
        let rest_id = $('#qrcode').attr("data-text");
        return (<QRCode value={rest_id}></QRCode>);
    }
}

if (document.getElementById('qrcode')) {
    ReactDOM.render(<QrCode />, document.getElementById('qrcode'));
}
