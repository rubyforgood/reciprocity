import React from "react";
const NewListingForm = () => {
  return (
    <form action="/participants" method="post">
      <div className="row">
        <div className="col">
          <label htmlFor="title">Listing Title</label>
          <input
            name="title"
            className="form-control"
            id="title"
            aria-describedby="nameHelp"
            placeholder="Enter title"
          />
        </div>
        <div className="col">
          <label htmlFor="zip_code">Listing zip code</label>
          <input
            name="zip_code"
            className="form-control"
            aria-describedby="zipCodeHelp"
            id="zip_code"
          />
        </div>
      </div>
      <div className="row">
        <div className="col">
          <label htmlFor="type">Type of listing</label>
          <input
            name="type"
            className="form-control"
            id="type"
            aria-describedby="nameHelp"
            placeholder="Enter type"
          />
        </div>
        <div className="col">
          <div className="form-group">
            <label htmlFor="reference_url">listing Website?</label>
            <input
              type="url"
              name="reference_url"
              id="reference_url"
              className="form-control"
              placeholder="https://example.com"
              required
            />
          </div>
        </div>
      </div>
      <div className="form-group">
        <label htmlFor="description">A description of this listing</label>
        <textarea
          name="description"
          className="form-control"
          id="description"
          aria-describedby="aboutMeHelp"
          rows="3"
        />
      </div>
      {["publish", "interaction"].map(action_type => (
        <div class="row">
          <div class="col">
            <label for="start">{action_type} start date:</label>
            <input
              type="date"
              id="start"
              className="form-control"
              name={`${action_type}_start_date`}
            />
          </div>
          <div class="col">
            <label for="start">{action_type} end date:</label>
            <input
              type="date"
              id="start"
              className="form-control"
              name={`${action_type}_end_date`}
            />
          </div>
        </div>
      ))}
      <button type="submit" className="btn btn-primary">
        Submit
      </button>
    </form>
  );
};

const ShowDashboard = ({ about, name, zip }) => {
  return (
    <div className="row">
      <div className="col col-md-4">
        <h1>hey turd, {name}!</h1>
        <p>You live in {zip}</p>
        <p>Here's a bit about you!</p>
        <p>{about}</p>
      </div>
      <div className="col col-md-4">
        <NewListingForm />
      </div>
      <div className="col col-md-4">One of three columns</div>
    </div>
  );
};

export default ShowDashboard;
