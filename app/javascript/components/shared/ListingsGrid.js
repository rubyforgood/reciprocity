import React from "react";

const readableTypes = type => type.replace(/([A-Z])/g, " $1").trim();

const ListingsGrid = props => {
  return Object.entries(props.listings).map(([type, listings]) => (
    <div key={type}>
      <h2>{readableTypes(type)}</h2>
      {listings.map(listing => (
        <div key={listing.id}>{listing.title}</div>
      ))}
    </div>
  ));
};

export default ListingsGrid;
