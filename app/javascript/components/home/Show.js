import React from "react";
import ListingForm from "../shared/ListingForm";
import { ParticipantInfo } from '../participants/Show'

const ShowDashboard = ({ about, name, zip, form }) => {
  return (
    <div className="row">
      <div className="col col-md-4">
        <ParticipantInfo name={name} zip={zip} about={about} />
      </div>
      <div className="col col-md-4">
        <ListingForm form={form} />
      </div>
      <div className="col col-md-4">One of three columns</div>
    </div>
  );
};

export default ShowDashboard;
