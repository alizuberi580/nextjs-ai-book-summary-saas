import { signOut } from "@/lib/auth";
import { NextRequest, NextResponse } from "next/server";
import { cookies } from "next/headers";


export async function POST(request: NextRequest) {
    try {
        // Clear the session cookie 
        /*
        cookies(): Next.js function that returns an interface to read/modify the browser's cookies
        cookieStore: The object you now use to interact with cookies
        */
        const cookieStore = await cookies();

        // Delete all auth- related cookies 
        /*
        1- .getAll():  Returns an array of all cookies currently set in the browser.
        2- forEach((cookie) => {...}):  Loops over every cookie one by onecookie.
        3- name:  The name of the current cookie in the loop (e.g. "authjs.session-token").
        4- startsWith('authjs'):  Checks if the cookie name begins with "authjs" — Auth.js's naming convention
        5- cookieStore.delete(cookie.name):  Deletes that specific cookie from the browser
        */
        cookieStore.getAll().forEach((cookie) => {
            if (cookie.name.startsWith('authjs') || cookie.name.startsWith('next-auth')) {
                cookieStore.delete(cookie.name);
            }
        });



        // Sign out without redirect 
        /*
        1- signOut(...):  Tells Auth.js to invalidate the session on the server side
        2- { redirect: false }:  By default signOut tries to redirect the browser — this disables that, since you're handling the response yourself
        */

        await signOut({ redirect: false });

        return NextResponse.json({ success: true }, {
            headers: {
                'Cache-Control': 'no-store, no-cache, must-revalidate, proxy-revalidate',
                'Pragma': 'no-cache',
                'Expires': '0',
            }
        });
    } catch (error) {
        console.error("Sign out error", error);
        return NextResponse.json(
            { error: "Filed to sign out" },
            { status: 500 }
        );
    }
}