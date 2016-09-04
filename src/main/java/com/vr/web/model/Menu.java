package com.vr.web.model;

import java.io.Serializable;

import lombok.Data;

@Data
public class Menu implements Serializable {

	private static final long serialVersionUID = -7653456611664463573L;

	private Long id;
	private Integer parentId;
	private Integer place;
	private Integer type;
	private String name;
	private String domain;
	private String herf;
	private Integer rank;
	private String css;
}
