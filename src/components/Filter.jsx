import React from 'react';
class Filter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      contacts: [],
      market: '',
      product: '',
      region: '',
      marketList: []
    }
    this.handleMarket = this.handleMarket.bind(this);
    this.filterMarket = this.filterMarket.bind(this);
    this.filterProduct = this.filterProduct.bind(this);
    this.filterRegion = this.filterRegion.bind(this);
  }

  handleMarket (e) {
    let value = e.target.value;
    let name = e.target.name;
    this.setState({
      [name]: value
    }, () => {
      this.filterMarket();
    })
  }

  filterMarket () {
    let contacts = this.props.contacts;
    if (this.state.market) {
      let filtered = [];
      contacts.forEach(contact => {
        if (contact.market === this.state.market) {
          filtered.push(contact);
        }
      })
      this.filterProduct(filtered);
    } else {
      this.filterProduct(contacts);
    }
  }

  filterProduct(contacts) {
    if (this.state.product) {
      let filtered = [];
      contacts.forEach(contact => {
        if (contact.product === this.state.product) {
          filtered.push(contact);
        }
      });
      this.filterRegion(filtered);
    } else {
      this.filterRegion(contacts);
    }
  }

  filterRegion(contacts) {
    if (this.state.region) {
      let filtered = [];
      contacts.forEach(contact => {
        if (contact.region === this.state.region) {
          filtered.push(contact);
        }
      });
      this.props.loadFilter(filtered);
    } else {
      this.props.loadFilter(contacts);
    }
  }



  render() {
    return (
      <>
        <div>
        Market
        <br />
        <input type="radio" value="Large Group" name="market" onChange={this.handleMarket}/> Large Group
        <input type="radio" value="51-99" name="market" onChange={this.handleMarket}/> 51-99
        <input type="radio" value="Large/Small" name="market" onChange={this.handleMarket}/> Large/Small Group
        </div>
        <div>
        Product
        <br />
        <input type="radio" value="Medical" name="product" onChange={this.handleMarket}/> Medical
        <input type="radio" value="Life/Disability" name="product" onChange={this.handleMarket}/> Life/Disability
        <input type="radio" value="Ancillary" name="product" onChange={this.handleMarket}/> Ancillary
        <input type="radio" value="Dental/Vision" name="product" onChange={this.handleMarket}/> Dental/Vision
        </div>
        <div>
        Region
        <br />
        <input type="radio" value="Northern CA" name="region" onChange={this.handleMarket}/> Northern CA
        <input type="radio" value="Out-of-State" name="region" onChange={this.handleMarket}/> Out-of-State
        <input type="radio" value="California" name="region" onChange={this.handleMarket}/> California
        </div>
      </>
    )
  }
}
export default Filter