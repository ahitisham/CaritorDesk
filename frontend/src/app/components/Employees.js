import React from "react";
import axios from 'axios';
import { Icon, Label, Menu, Table,Button } from 'semantic-ui-react';
import EmployeeDetail from "./EmployeeDetail";


export class Employees extends React.Component{
  constructor(props) {
    super(props);
    this.state = {episodes:[],showViewDetails:false,episode:[],getEpisode:[]};
      
    this.takeAction = this.takeAction.bind(this); 
    this.fetchFromServer=this.fetchFromServer.bind(this);
  };

  takeAction(event,data){
    let empId =data.value;
    console.log("empId  "+empId);
      if (data.action === "view") {
          console.log("hello view");

          axios.get(`http://localhost:1336/search/employee/id/`+empId)
          .then(res => {  
           this.setState({getEpisode:res.data,showViewDetails: true});
           console.log("test:"+res.data);
           })

        }
  }
  //accessing data from database
  fetchFromServer(){
      axios.get(`http://localhost:1336/search/employee`)
      .then(res => {  
        this.setState({episodes:res.data});
      })
    }
  
  

  //displaying data form database
  render(){

    if (this.state.showViewDetails) {
        return ( <div>
          <EmployeeDetail detailData={this.state.getEpisode}/></div>  );
    }else {
    return(
      <div>
    <Table celled striped>
    <Table.Header>
      <Table.Row>
        <Table.HeaderCell colSpan='3'><h3 className="panel-title">All Employee Information</h3></Table.HeaderCell>
      </Table.Row>
    </Table.Header>

      <Table.Header>
        <Table.Row>
          <Table.HeaderCell>empCode</Table.HeaderCell>
          <Table.HeaderCell>empName</Table.HeaderCell>
          <Table.HeaderCell>empType</Table.HeaderCell>
          <Table.HeaderCell>empRole</Table.HeaderCell>
          <Table.HeaderCell>Action</Table.HeaderCell>
        </Table.Row>
      </Table.Header>
         
      <Table.Body>
        {this.state.episodes.map(episode =>
          <Table.Row key={episode.empId}>
        <Table.Cell>{episode.empCode}</Table.Cell>
        <Table.Cell>{episode.empName}</Table.Cell>
        <Table.Cell>{episode.empType}</Table.Cell>
        <Table.Cell>{episode.empRole}</Table.Cell>
        <Table.Cell><Button value={episode.empId} action="view" onClick={this.takeAction} icon="eye" /></Table.Cell>
          </Table.Row>
          )}  
      </Table.Body>

      <Table.Footer>
        <Table.Row>
          <Table.HeaderCell colSpan='3'>
            <Menu floated='right' pagination>
              <Menu.Item as='a' icon>
                <Icon name='left chevron' />
              </Menu.Item>
              <Menu.Item as='a'>1</Menu.Item>
              <Menu.Item as='a'>2</Menu.Item>
              <Menu.Item as='a'>3</Menu.Item>
              <Menu.Item as='a'>4</Menu.Item>
              <Menu.Item as='a' icon>
                <Icon name='right chevron' />
              </Menu.Item>
            </Menu>
          </Table.HeaderCell>
        </Table.Row>
        </Table.Footer>
      </Table>
      <p><a className="btn btn-primary btn-lg" href="#" role="button" onClick={this.fetchFromServer} >Fetch Employee Data</a></p>
  </div>
    )};
  }
}