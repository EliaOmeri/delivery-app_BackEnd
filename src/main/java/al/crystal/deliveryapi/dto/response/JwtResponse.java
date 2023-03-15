package al.crystal.deliveryapi.dto.response;

import lombok.Data;

@Data
public class JwtResponse {
    private String token;
    private String type = "Bearer";
    private Long id;
    private String firstName;
    private String email;
    private String roles;

    public JwtResponse(String accessToken, Long id, String firstName, String email, String roles) {
        this.token = accessToken;
        this.id = id;
        this.firstName = firstName;
        this.email = email;
        this.roles = roles;
    }

    public String getAccessToken() {
        return token;
    }

    public void setAccessToken(String accessToken) {
        this.token = accessToken;
    }

    public String getTokenType() {
        return type;
    }

    public void setTokenType(String tokenType) {
        this.type = tokenType;
    }


}
