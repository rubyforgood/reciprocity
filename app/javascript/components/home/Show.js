import React from "react";
import ListingForm from "../shared/ListingForm";

const ShowDashboard = ({ about, name, zip, form }) => {
  return (
    <div className="row">
      <div className="col col-md-4">
        <h1>hey, {name}!</h1>
        <p>You live in {zip}</p>
        <p>Here's a bit about you!</p>
        <p>{about}</p>
      </div>
      <div className="col col-md-4">
        <ListingForm form={form} />
      </div>
      <div className="col col-md-4">One of three columns</div>
    </div>
  );
};

export default ShowDashboard;
