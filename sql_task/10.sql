SELECT *
FROM (SELECT USERNAME, OFFER_NAME, DESCRIPTION, LINK, PHOTO_LINK, CREATED_AT, VALID_UNTIL, DISCOUNT, AVG(reviews.RATING) AS RATING
	FROM profit.offer
	INNER JOIN profit.reviews
	ON offer.OFFER_ID = reviews.OFFER_ID
	GROUP BY offer.OFFER_ID) numbers
WHERE RATING > 3