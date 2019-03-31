import React from 'react'
import PropTypes from 'prop-types'

const form = ({action, children, method}) => (
  <form action={action} method="post">
    {method === 'patch' && <input name="_method" type="hidden" value="patch" />}
    {children}
  </form>
)

form.propTypes = {
  action: PropTypes.string.isRequired,
  children: PropTypes.array.isRequired,
  method: PropTypes.string.isRequired,
}

export default form
