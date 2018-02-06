import React from "react";
import { Button, Checkbox, Form, Input, Radio, Select, TextArea, Segment, Dropdown,Icon } from 'semantic-ui-react';
import DatePicker from 'react-datepicker';
import moment from 'moment';
import axios from 'axios';



const KeySkills = [
  { key: 'angular', text: 'Angular', value: 'angular' },
  { key: 'css', text: 'CSS', value: 'css' },
  { key: 'design', text: 'Graphic Design', value: 'design' },
  { key: 'ember', text: 'Ember', value: 'ember' },
  { key: 'html', text: 'HTML', value: 'html' },
  { key: 'ia', text: 'Information Architecture', value: 'ia' },
  { key: 'javascript', text: 'Javascript', value: 'javascript' },
  { key: 'mech', text: 'Mechanical Engineering', value: 'mech' },
  { key: 'meteor', text: 'Meteor', value: 'meteor' },
  { key: 'node', text: 'NodeJS', value: 'node' },
  { key: 'plumbing', text: 'Plumbing', value: 'plumbing' },
  { key: 'python', text: 'Python', value: 'python' },
  { key: 'rails', text: 'Rails', value: 'rails' },
  { key: 'react', text: 'React', value: 'react' },
  { key: 'repair', text: 'Kitchen Repair', value: 'repair' },
  { key: 'ruby', text: 'Ruby', value: 'ruby' },
  { key: 'ui', text: 'UI Design', value: 'ui' },
  { key: 'ux', text: 'User Experience', value: 'ux' },
]
const empType = [
  { key: 'm', text: 'Full-time', value: 'Full-time' },
  { key: 'f', text: 'Part-time', value: 'Part-time' },
]
const empRole = [
  { key: 's', text: 'Software Developer', value: 'Software Developer' },
  { key: 't', text: 'Team Lead/Tech Lead', value: 'Team Lead/Tech Lead' },
  { key: 'sa', text: 'System Analyst', value: 'System Analyst' },
  { key: 'p', text: 'Product Mgr', value: 'Product Mgr' },
  { key: 'a', text: 'System Admin', value: 'System Admin' },
  { key: 'oc', text: 'Outside Consultant', value: 'Outside Consultant' },
]
const empExpYear = [
  { key: '1', text: '1', value: '1' },
  { key: '2', text: '2', value: '2' },
  { key: '3', text: '3', value: '3' },
  { key: '4', text: '4', value: '4' },
  { key: '5', text: '5', value: '5' },
  { key: '6', text: '6', value: '6' },
]
const gender = [
  { key: 'm', text: 'Male', value: 'male' },
  { key: 'f', text: 'Female', value: 'female' },
]
export class EmployeeUpdate extends React.Component{
	constructor(props){
		super(props);
		//define state
		this.state={empCode:'',empName:'',empType:'',empRole:'',empExpYear:'',joinDate: moment(),mobile:'',email:'',gender:'',KeySkills: []}

			//binding 'this' to access this state
	  		this.handleSubmit=this.handleSubmit.bind(this);
	  		this.empCodeHandleChange=this.empCodeHandleChange.bind(this);
	  		this.empNameHandleChange=this.empNameHandleChange.bind(this);
	  		this.empTypeHandleChange=this.empTypeHandleChange.bind(this);
	  		this.empRoleHandleChange=this.empRoleHandleChange.bind(this);
	  		this.empExpYearHandleChange=this.empExpYearHandleChange.bind(this);
	  		this.joinDateHandleChange = this.joinDateHandleChange.bind(this);
	  		this.mobileHandleChange=this.mobileHandleChange.bind(this);
	  		this.emailHandleChange=this.emailHandleChange.bind(this);
	  		this.genderHandleChange=this.genderHandleChange.bind(this);
	  		this.onSkillClick = this.onSkillClick.bind(this);
	}
	//handle all event and set state
	 onSkillClick(event, data) {
        this.setState({ KeySkills: data.value});
    }
	genderHandleChange(event,data){
		this.setState({gender:data.value});
	}
	emailHandleChange(event){
		this.setState({email:event.target.value});
	}
	mobileHandleChange(event){
		this.setState({mobile:event.target.value});
	}
	joinDateHandleChange(date) {
    this.setState({joinDate: date});
    }
	empExpYearHandleChange(event,data){
		this.setState({empExpYear:data.value})
	}
	empRoleHandleChange(event,data){
		this.setState({empRole:data.value})
	}
	empTypeHandleChange(event,data){
		this.setState({empType:data.value})
	}
	empNameHandleChange(event){
		this.setState({empName:event.target.value});
	}
	empCodeHandleChange(event){
		this.setState({empCode:event.target.value});
	}
	handleSubmit(){
		let user = this.props.empId;
		// document.write("<h3>you have successfully submitted</h3>"+"empCode:"+this.state.empCode+"</br>empName:"+this.state.empName+
		// "</br>empType:"+this.state.empType+"</br>empRole:"+this.state.empRole+"</br>empExpYear:"+this.state.empExpYear+
		// "</br>joinDate:"+this.state.joinDate+"</br>mobile:"+this.state.mobile+"</br>email:"+this.state.email+"</br>gender:"+this.state.gender+
		// "KeySkills:"+this.state.KeySkills);

		//json data for sending to the database
		const { empCode,empName,empType,empRole,empExpYear,joinDate,mobile,email,gender,KeySkills} = this.state;
		const { empId } = this.props;
		let jsondata={empCode,empName,empType,empRole,empExpYear,joinDate,mobile,email,gender,KeySkills };
		console.log("json sending to server:"+JSON.stringify(jsondata, null, 2));
		console.log("test empID data"+empId);
		axios({
              method: 'post',
              url: 'http://localhost:1336/update/employee/id/'+empId,
              data: { empCode,empName,empType,empRole,empExpYear,joinDate,mobile,email,gender,KeySkills },
            });

	}
componentDidMount() {
    const { empId } = this.props;
    
  }
	//rendring the EmployeeSnap page to bundle.js using webpack
	render(){

		const { value } = this.state
		return(
			<div className="panel-group ">
			    <div className="panel panel-default bt_Bdr_org">
			      	<div className="panel-heading"><h3 className="panel-title">CustomerUpdate Snapshot {this.props.empId}</h3></div>
			      <div className="panel-body">
			      	 <Segment>
					   <Form onSubmit={this.handleSubmit}>	
						<Form.Group widths='equal'>
						<Form.Field control={Input} label='Emp Code' placeholder='Emp Code' value={this.props.UpData.empCode} onChange={this.empCodeHandleChange} />
						<Form.Field control={Input} label='Emp Name' placeholder='Emp Name' value={this.props.UpData.empName} onChange={this.empNameHandleChange}/>
						<Form.Field control={Select} label='Emp Type' placeholder='Emp Type' options={empType} value={this.props.UpData.empType} onChange={this.empTypeHandleChange}/>

						</Form.Group>
						<Form.Group widths='equal'>
						<Form.Field control={Select} label='Emp Role' placeholder='Emp Role' options={empRole} value={this.props.UpData.empRole} onChange={this.empRoleHandleChange}/>
						<Form.Field control={Select} label='Total Exp' placeholder='Total Exp' options={empExpYear} value={this.props.UpData.empExpYear} onChange={this.empExpYearHandleChange}/>
						<Form.Field control={DatePicker} label='Join Date' placeholder='Join Date' selected={this.props.UpData.joinDate} onChange={this.joinDateHandleChange}/>
						</Form.Group>


						<Form.Group widths='equal'>
						<Form.Field control={Input} label='Mobile no' placeholder='Mobile no' value={this.props.UpData.mobile} onChange={this.mobileHandleChange}/>
						<Form.Field control={Input}  label='Email' placeholder='Email' value={this.props.UpData.email} onChange={this.emailHandleChange}/>
						<Form.Field control={Select} label='Gender' options={gender} placeholder='Gender' value={this.props.UpData.gender} onChange={this.genderHandleChange} />
						</Form.Group>


						<Form.Group widths='equal'>
						<Form.Field control={Dropdown} fluid multiple selection label='KeySkills' placeholder='KeySkills' value={this.props.UpData.KeySkills} onChange={this.onSkillClick} options={KeySkills} />
						</Form.Group>

						<Form.Group widths='equal'>
						<Form.Field control={Button}>Update</Form.Field>
						</Form.Group>
					  </Form>
					</Segment>
				  </div>
				</div>
				<hr/>
			</div>
			);
	}
} 	

