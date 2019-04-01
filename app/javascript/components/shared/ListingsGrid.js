import React from "react";

const readableTypes = type => type.replace(/([A-Z])/g, " $1").trim();

const ListingsGrid = props => {
  return Object.entries(props.listings).map(([type, listings]) => (
    <div class="card listing-card" key={type}>
      <div class="card-header">{readableTypes(type)}</div>
      <div class="card-body">
        {listings.map(listing => (
          <div key={listing.id} className="listing-item">
            <h5 class="card-title">title: {listing.title}</h5>
            <p class="card-text">{listing.description}</p>
            <p>
              Learn more at{" "}
              <a href={listing.reference_url}>{listing.reference_url}</a>
            </p>
          </div>
        ))}
      </div>
    </div>
  ));
};

export default ListingsGrid;
