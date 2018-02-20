package com.profileviewer.jae;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;

import com.google.gson.Gson;

public class JsonFetcher {
	
	
	private static String getJson(String urlString) throws Exception {
	    BufferedReader reader = null;
	    try {
	        URL url = new URL(urlString);
	        reader = new BufferedReader(new InputStreamReader(url.openStream()));
	        StringBuffer buffer = new StringBuffer();
	        int read;
	        char[] chars = new char[1024];
	        while ((read = reader.read(chars)) != -1)
	            buffer.append(chars, 0, read); 

	        return buffer.toString();
	    } finally {
	        if (reader != null)
	            reader.close();
	    }
	}
	
	
	protected ArrayList<Profile> getProfiles() {
		
		String json = null;
		try {
			json = getJson("http://s3-ap-southeast-1.amazonaws.com/fundo/js/profiles.json");
		}catch(Exception e) {
			e.printStackTrace();
		}

		Gson gson = new Gson();
		Profile[] profiles = gson.fromJson(json, Profile[].class);
		return new ArrayList<Profile>(Arrays.asList(profiles));
	//	System.out.println(profile.getAddress());
		
	}

}
