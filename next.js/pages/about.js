import React from 'react'
import Link from 'next/link'

function About() {
  return (
    <>
      <Link href="/">
        <a>Home</a>
      </Link>
      <h1>About</h1>
      <img src="/assets/about.png" />
    </>
  )
}

export default About
