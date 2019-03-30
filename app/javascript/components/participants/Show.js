import React from "react"

const ShowParticipant = ({
  about,
  name,
  zip,
}) => {
  return(
    <div>
      <h1>Welcome, {name}!</h1>
      <p>You live in {zip}</p>
      <p>Here's a bit about you!</p>
      <p>{about}</p>
    </div>
  )
}

export default ShowParticipant
