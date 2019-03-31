import React from 'react'

const form = ({action, children, method}) => (
  <form action={form.action} method="post">
    {form.method === 'patch' && <input name="_method" type="hidden" value="patch" />}
    {children}
  </form>
)

export default form
