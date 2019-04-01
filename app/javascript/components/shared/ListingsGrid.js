import React from "react";

const readableTypes = type => type.replace(/([A-Z])/g, " $1").trim();

const ListingsGrid = props => {
  return Object.entries(props.listings).map(([type, listings]) => (
    <div class="card listing-card" key={type}>
      <div class="card-header">{readableTypes(type)}</div>
      <ul class="list-group list-group-flush" />
      {listings.map(listing => (
        <li key={listing.id} class="list-group-item">
          <h5 class="card-title">title: {listing.title}</h5>
          <p class="card-text">{listing.description}</p>
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
