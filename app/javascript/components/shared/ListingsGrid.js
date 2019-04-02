import React from "react";

const readableTypes = type => type.replace(/([A-Z])/g, " $1").trim();

const ListingsGrid = props => {
  return Object.entries(props.listings).map(([type, listings]) => (
    <div className="card listing-card" key={type}>
      <div className="card-header">{readableTypes(type)}</div>
      <ul className="list-group list-group-flush" />
      {listings.map(listing => (
        <li key={listing.id} className="list-group-item">
          <h5 className="card-title">title: {listing.title}</h5>
          <p className="card-text">{listing.description}</p>
          <p>
            Learn more at{" "}
            <a href={listing.reference_url}>{listing.reference_url}</a>
          </p>
        </li>
      ))}
    </div>
  ));
};

export default ListingsGrid;
