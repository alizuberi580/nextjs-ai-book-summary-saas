"use client"
import {SessionProvider as NextAuthSessionProvider} from "next-auth/react"

export default function SessionProvider({children}:{children:React.ReactNode}){
  return (
    <NextAuthSessionProvider>
      {children}
    </NextAuthSessionProvider> 
  )
}
// not doing it direclty in layout because we want to avoid hydration issues with session data that might be fetched on the client side
//since Auth includes user inputs, session/token storage at browser side, hence creating separate provider tag and makig it Client Side
// then wrapping it around the children in layout