package com.example.WuyeGuanli.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResidentLoginInfo {
    public ResidentLoginInfo(Long id2, String address2, String name2, String jwt) {
		// TODO 自動產生的建構子 Stub
	}
	private Long id;
    private String address;
    private String name;
    private String token;
}
