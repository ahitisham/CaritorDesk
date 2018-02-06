import React from "react";
import { Container,Segment,Button } from 'semantic-ui-react';

import { EmployeeUpdate } from "./EmployeeUpdate";

export default class  SearchView  extends React.Component {
    constructor(props) {
    super(props);
    this.state={showViewDetails:false}
            console.log("hello props view");  


  }
EditChange(event){
  this.setState({showViewDetails:true})
}

    render(){ 
    	if (this.state.showViewDetails) {
        return ( <div>
         <EmployeeUpdate UpData={this.props.detailData} empId={this.props.empId}/></div>  );
    	}else {

        return (
            <div className="panel-group ">
            <div className="panel panel-default bt_Bdr_org">
                <div className="panel-heading"><h3 className="panel-title">Customer {this.props.empId} Info</h3></div>
              <div className="panel-body">

              <Segment.Group horizontal>
                 <Segment> <lable>Emp Code  :  </lable> {this.props.detailData.empCode}</Segment>
                <Segment><lable>Emp Name:  </lable>{this.props.detailData.empName}</Segment>
                <Segment><lable>Emp Type:  </lable>{this.props.detailData.empType}</Segment>
              </Segment.Group>
               <Segment.Group horizontal>
                 <Segment> <lable>Emp Role:  </lable>{this.props.detailData.empRole}</Segment>
                <Segment><lable>Emp ExpYear:  </lable>{this.props.detailData.empExpYear}</Segment>
                <Segment><lable>JoinDate:  </lable>{this.props.detailData.joinDate}</Segment>
              </Segment.Group>
               <Segment.Group horizontal>
                 <Segment> <lable>Mobile:  </lable>{this.props.detailData.mobile}</Segment>
                <Segment><lable>Email:  </lable>{this.props.detailData.email}</Segment>
                <Segment><lable>Gender:  </lable>{this.props.detailData.gender}</Segment>
              </Segment.Group>
               <Segment.Group horizontal>
                 <Segment> <lable>KeySkills:  </lable>{this.props.detailData.KeySkills}</Segment>
              </Segment.Group>
			             <p><a className="btn btn-primary btn-lg" href="#" role="button" onClick={this.EditChange.bind(this)}>Edit</a></p>
           </div>
           </div>
           </div>
            );}
    };
}
