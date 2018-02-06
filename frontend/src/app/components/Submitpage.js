import React from "react";
import { Button, Checkbox, Form, Input, Radio, Select, TextArea } from 'semantic-ui-react'
//import axios from 'axios';

export class Submitpage extends React.Component {
        constructor(){
            super();
            this.state={Emp_Name:'',Email:''};

            this.handleChange=this.handleChange.bind(this);
            this.handleSubmit=this.handleSubmit.bind(this);
        }
    handleChange(event)
    {
        if (event.target.name === "Emp_Name") {
            this.setState({ Emp_Name: event.target.value.toUpperCase() });
        }
        if (event.target.name === "Email") {
            this.setState({ Email: event.target.value });
        }
        
    }
    handleSubmit(event){
        document.write(this.state.Emp_Name+" "+this.state.Email);
         const { Emp_Name, Email } = this.state;
        console.log("json sending to server"+JSON.stringify({Emp_Name, Email }, null, 2));
        event.preventDefault();
    }

    render() {

        return (
            <div>
                <h3>SignUp!</h3>
                <Form onSubmit={this.handleSubmit}>
                    <label>Emp_Name:<Input type="text" value={this.state.Emp_Name} onChange={this.handleChange} name="Emp_Name"/></label>
                   <label>Email:<Input type="text" value={this.state.Email} onChange={this.handleChange} name="Email"/></label>
                    <Input type="submit" value="SignUp"/>
                </Form>
                <br/>
            </div>
        );
    }
}



// {
//   "Emp_Name": "khalid",
//   "Role_Id": 2,
//   "Dept_Id": 4
// } 