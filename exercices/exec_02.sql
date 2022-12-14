SELECT 
  testimonials.id, 
  t1.name AS writer,
  t2.name AS recipient,
  testimonials.message
FROM testimonials
JOIN users t1 
ON testimonials."writerId" = t1.id
JOIN users t2 
ON testimonials."recipientId" = t2.id;