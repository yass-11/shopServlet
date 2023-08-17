package Devoir_1.model;

public class User {
		private int id;
		private String name;
		private String email;
		private String password;
		private String role;
		private String mobile="NULL";
		private String address="NULL";
		private String company="NULL";
		
		
		public User() {
		}

		public User(int id, String name, String email, String password, String role) {
			super();
			this.id = id;
			this.name = name;
			this.email = email;
			this.password = password;
			this.role = role;
		}
		
		

		public User(String name, String email, String mobile, String address,String company) {
			super();
			this.name = name;
			this.email = email;
			this.mobile = mobile;
			this.address = address;
			this.company = company;
		}
		
		

		public User(String name, String email, String password, String role, String mobile, String address,
				String company) {
			super();
			this.name = name;
			this.email = email;
			this.password = password;
			this.role = role;
			this.mobile = mobile;
			this.address = address;
			this.company = company;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}
		
		public String getMobile() {
			return mobile;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getCompany() {
			return company;
		}

		public void setCompany(String company) {
			this.company = company;
		}
		
}
