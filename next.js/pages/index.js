import React from 'react'
import Link from 'next/link'

function Home() {
  return (
    <>
      <h1>Home</h1>
    </>
  )
}

/*
function Home({content}) {
  return (
    <>
      <Link href="/about">
        <a>About</a>
      </Link>
      <h1>Home</h1>
      <img src="/assets/home.png" />
      <ul>
        <li>{content.users}</li>
      </ul>
      </>
  )
}
*/
/*
export async function getServerSideProps({req}) {
  // Call an external API endpoint to get posts.
  // You can use any data fetching library
  const headers = {
    "Accept": "application/json",
    //"client_id": "1001125",
    //"client_secret": "876JHG76UKFJYGVHf867rFUTFGHCJ8JHV"
  }

  const res = await fetch('http://192.168.49.2:30178/api', { headers: headers });
  //const res = await fetch('http://192.168.32.4/api', { headers: headers });
  const content = await res.json()

  // By returning { props: { posts } }, the Blog component
  // will receive `posts` as a prop at build time
  return {
    props: {
      content,
    },
  }
}
*/
export default Home
