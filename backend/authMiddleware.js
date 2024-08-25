module.exports.isAdmin = (req, res, next) => {
  const user = req.user; // Assuming req.user is set after authentication

  if (user && user.role === "admin") {
    next();
  } else {
    res.status(403).json({ message: "Access denied" });
  }
};
