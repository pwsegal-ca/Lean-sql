CREATE DATABASE "Learn" FROM "dbc" AS
	PERMANENT = 104857600,
	NO FALLBACK PROTECTION,
	NO BEFORE JOURNAL,
	NO AFTER JOURNAL;
	
	CREATE USER "Me" FROM "dbc" AS
		PERMANENT = 0,
		PASSWORD = "********",
		DEFAULT DATABASE = "Learn",
		NO FALLBACK PROTECTION,
		NO BEFORE JOURNAL,
		NO AFTER JOURNAL;

grant all on learn to me with grant option;
grant select on val.accounts to me with grant option;
grant select on val.checking_acct to me with grant option;
grant select on val.checking_tran to me with grant option;
grant select on val.savings_acct to me with grant option;
grant select on val.savings_tran to me with grant option;
grant select on val.credit_acct to me with grant option;
grant select on val.credit_tran to me with grant option;
grant select on val.customer to me with grant option;
grant select on val.customer_analysis to me with grant option;
grant select on val.customer_dqa to me with grant option;
grant select on val.transactions to me with grant option;
grant select on val to learn with grant option;	 
