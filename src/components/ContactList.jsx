import React from 'react';

class ContactList extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <table>
         <thead>
         <tr>
          <th>Market</th>
          <th>Product</th>
          <th>Region</th>
          <th>Territory</th>
          <th>Carrier</th>
          <th>Name</th>
          <th>Title</th>
          <th>Email</th>
          <th>Phone Number</th>
          <th>Phone Number #2</th>
          <th>Notes</th>
         </tr>
         </thead>
         <tbody>
         {this.props.props.map((val, key) => {
          var email = "mailto:" + val.email;
          return (
            <tr key={key}>
              <td>{val.market}</td>
              <td>{val.product}</td>
              <td>{val.region}</td>
              <td>{val.territory}</td>
              <td>{val.carrier}</td>
              <td>{val.name}</td>
              <td>{val.title}</td>
              <td><a href={email}>{val.email}</a></td>
              <td>{val.phone}</td>
              <td>{val.phone2}</td>
              <td>{val.notes}</td>
            </tr>
          )
        })}
         </tbody>
        </table>
      </div>
    )
  }
}
export default ContactList