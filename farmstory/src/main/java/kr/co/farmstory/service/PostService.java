package kr.co.farmstory.service;

public class PostService {
	private static PostService instance = new PostService();
	private PostService() {}
	public static PostService getInstance() { return instance; }
	
}
