import React from "react";

import { Button, Container, Grid, Header, Icon, Image, Item, Label, Menu, Segment, Step, Table,Input,Dropdown,Select} from 'semantic-ui-react'
 

const style = {
  h1: {
    marginTop: '3em',
  },
  h2: {
    margin: '4em 0em 2em',
  },
  h3: {
    marginTop: '2em',
    padding: '2em 0em',
  },
  last: {
    marginBottom: '300px',
  },
}


const role = [
            { key: 'angular', text: 'Angular', value: 'angular' },
            { key: 'css', text: 'CSS', value: 'css' },
            { key: 'design', text: 'Graphic Design', value: 'design' },
            { key: 'ember', text: 'Ember', value: 'ember' },
]
const options = [
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
const skillsOptions = [
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
export class Signup extends React.Component{

		constructor()
		{
			super();
			this.state={EmpId:'',Emp_Name:'',EmpType:'',Role:'',TotalExperience:'',Email:'',Mobile:'',Gender:'',selectedValue: [],}

			this.handleChange=this.handleChange.bind(this);
			this.handleSubmit=this.handleSubmit.bind(this);
       this.onItemClick = this.onItemClick.bind(this);
       this.onRoleClick = this.onRoleClick.bind(this);
       
		}

 onRoleClick(event, data)
 {
  this.setState({Role: data.value});
 }


 
    
    onItemClick(event, data) {
        this.setState({ selectedValue: data.value});
         console.log(this.state.selectedValue);
    }
		handleChange(event){
			if(event.target.name==="Emp_Name")
			{
				this.setState({Emp_Name:event.target.value});
			}
			if(event.target.name==="Email")
			{
				this.setState({Email:event.target.value});
			}
			if(event.target.name==="EmpType")
			{
				this.setState({EmpType:event.target.value});
			}
			if(event.target.name==="Role")
			{
				this.setState({Role:event.target.value});
			}
		
			if(event.target.name==="TotalExperience")
			{
				this.setState({TotalExperience:event.target.value});
			}
			if(event.target.name==="Skills")
			{
				this.setState({Skills:event.target.value});
			}
		}
	

		handleSubmit(event){
			document.writeln(this.state.Emp_Name+"  "+this.state.EmpType+"  "+"  "+this.state.Email+"JoinDate:"+this.state.startDate+" skills:"+this.state.selectedValue+"Role:"+this.state.Role);
			event.preventDefault();
		}


	render(){
		
		return(
			<div className="panel-group ">
				<Header
			      as='h3'
			      textAlign='center'
			      style={style.h3}
			      content='Profile Snapshot'
			    />

	 <form onSubmit={this.handleSubmit}>


	<Grid columns={2} container divided='vertically' stackable>
      <Grid.Row>
        <Grid.Column>
          <label>EmpId:
				<Input  value={this.state.EmpId} onChange={this.handleChange} name="EmpId"/></label>
        </Grid.Column>
        <Grid.Column>
          <label>Emp_Name:
				 <Input  value={this.state.Emp_Name} onChange={this.handleChange} name="Emp_Name"/></label>
        </Grid.Column>
      </Grid.Row>

      <Grid.Row>
        <Grid.Column>
          <label>EmpType:
			<select value={this.state.EmpType} onChange={this.handleChange} name="EmpType">
				<option value="grapefruit">Grapefruit</option>
		        <option value="lime">Lime</option>
			    <option value="coconut">Coconut</option>
				<option value="mango">Mango</option>
			</select>
		  </label>
        </Grid.Column>
        <Grid.Column>
         <label>Role:
           <Select placeholder='Select your Role' options={role} value={this.state.Role} onChange={this.onRoleClick} name="Role"/>
          </label>
        </Grid.Column>
      </Grid.Row>


      <Grid.Row>
        <Grid.Column>
         <label>TotalExperience:
			 <Input type="text" value={this.state.TotalExperience} onChange={this.handleChange} name="TotalExperience"/>
	    </label>
        </Grid.Column>
        <Grid.Column>

		 <label>JoinDate:

		</label>
        </Grid.Column>
      </Grid.Row>

        <Grid.Row>
        <Grid.Column>
           <label>Mobile:
              <Input type="text" value={this.state.Mobile} onChange={this.handleChange} name="Mobile"/></label>
        </Grid.Column>
        <Grid.Column>
		      <label>Email:
              <Input type="text" value={this.state.Email} onChange={this.handleChange} name="Email"/></label>
        </Grid.Column>
      </Grid.Row>



        <Grid.Row>
        <Grid.Column>
         	<label>Gender:
				         <select value={this.state.Gender} onChange={this.handleChange} name="Gender">
				            <option value="grapefruit">Male</option>
				            <option value="lime">Female</option>
				          </select>
				        </label>
        </Grid.Column>
        <Grid.Column>
          <label>Skills:
            <Dropdown onChange={this.onItemClick} value={this.state.selectedValue} placeholder='Skills' fluid  selection multiple options={options}/>
					</label>
		 </Grid.Column>
      </Grid.Row>

        <Grid.Row>
        <Grid.Column>
         
				<Input type="submit" value="SignUp"/>

        </Grid.Column>
        <Grid.Column>
    za
   		 </Grid.Column>
      </Grid.Row>
    </Grid>

</form> 
				
				
			  	
				
                 		
                
                
			</div>
			);
	}
} 	

