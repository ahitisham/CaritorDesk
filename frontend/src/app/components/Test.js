import { Dropdown } from 'semantic-ui-react'
import React, { Component } from 'react';

import DatePicker from 'react-datepicker';
import moment from 'moment';

//import 'react-datepicker/dist/react-datepicker.css';

export class Test extends Component {

    constructor() {
        super();
        this.state={startDate: moment()}

        this.handleChange=this.handleChange.bind(this);

    }
  handleChange(value) {
    this.setState({
      startDate: value
    });
    document.write(this.state.startDate)
  }
    
    render() {

        
        return <div>

        <p> hi ho,b,c kmc,vb, </p>
        </div>
    }
}   

