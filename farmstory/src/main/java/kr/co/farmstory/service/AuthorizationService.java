package kr.co.farmstory.service;

import kr.co.farmstory.dto.CommentDTO;
import kr.co.farmstory.dto.PostDTO;
import kr.co.farmstory.dto.UserDTO;

public enum AuthorizationService {
	INSTANCE;
	
    public boolean isAdmin(UserDTO UserDTO) {
        return UserDTO != null && "ADMIN".equals(UserDTO.getRole());
    }

    public boolean canEditPost(UserDTO UserDTO, PostDTO post) {
        return UserDTO != null && 
        		(UserDTO.getId().equals(post.getWriterId())
                || isAdmin(UserDTO));

    }

    public boolean canDeleteComment(UserDTO UserDTO, CommentDTO comment) {
        return UserDTO != null &&
               (UserDTO.getId().equals(comment.getWriterId())
               || isAdmin(UserDTO));
    }
}
