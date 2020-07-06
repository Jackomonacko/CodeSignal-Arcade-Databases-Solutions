/*Please add ; after each select statement*/
CREATE PROCEDURE userCountries()
BEGIN
    select id, ifnull(country, "unknown") country
        from users left join cities on users.city=cities.city
        order by 1;
END
