import React from "react";
import BootstrapContainer from "BootstrapContainer";

const ParticipantData = ({ name, zip, about }) => (
  <div>
    <img
      className="img-responsive CattoBorderRadius"
      src="http://placekitten.com/g/200/200"
    />
    <h1>Welcome, {name}!</h1>
    <p>You live in {zip}</p>
    <p>Here's a bit about you!</p>
    <p>{about}</p>
    <a href="profile/edit">Edit profile</a>
  </div>
);

const ShowParticipant = props => {
  return (
    <BootstrapContainer>
      <ParticipantData {...props} />
    </BootstrapContainer>
  );
};

export default ShowParticipant;
export { ParticipantData };
