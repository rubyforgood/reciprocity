import React from "react";
import ListingForm from "../shared/ListingForm";
import { ParticipantData } from "../participants/Show";
import ListingsGrid from "../shared/ListingsGrid";

const ShowDashboard = ({ form, listings, ...props }) => {
  return (
    <div className="row">
      <div className="col col-md-4">
        <ParticipantData {...props} />
      </div>
      <div className="col col-md-4">
        <ListingForm form={form} />
      </div>
      <div className="col col-md-4">
        <ListingsGrid listings={listings} />
      </div>
    </div>
  );
};

export default ShowDashboard;
