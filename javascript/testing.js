function User(name) {
  this.name = function(){
    return name
  }()
  this.isLoggedIn = function(){
    return false;
  }(),
  
  this.lastLoggedInAt = function(){
    return '';
  }()
  
  this.isModerator = function(){
    return false
  }()
  
  this.isAdmin = function(){
    return false
  }()
}
User.prototype = {
  isLoggedIn: function() {
    return ''
  },
  getLastLoggedInAt: function() {
    return this.lastLoggedInAt
  },
  logIn: function() {
    this.isLoggedIn = true
    this.lastLoggedInAt = Date.now()
  },
  logOut: function() {
    this.isLoggedIn = false
  },
  getName: function() {
    return this.name;
  },
   setName: function(name) {
     this.name = name
   },
   canEdit: function(comment) {
     if (comment.author === this || this.isAdmin){
      return true 
     }else{
      return false
     }
     
   },
   canDelete: function(comment) {
     if(this.isAdmin || this.isModerator){
       return true
     }else{
       return false
     }
   },
  
   makeModerator: function(){
     this.isModerator = true
   }, 
  
  makeAdmin: function(){
    this.isAdmin = true
  }
}

var Admin = function(name){
  var user = new User (name)
  user.makeAdmin()
  return user
}

var Moderator = function(name){
  var user = new User(name)
  user.makeModerator()
  return user
  
}


 
function Comment(author, message, repliedTo) {
  this.author = function(){
    return author;
  }(),
  this.message = function(){
    return message
  }(),
  
  this.repliedTo = function(){
    return repliedTo
  }(),
  
  this.createdAt = function(){
    return Date.now()
  }()
  
}
Comment.prototype = {
  getMessage: function() {
    return this.message
  },
  setMessage: function(message) {
    this.message = message
  },
  getCreatedAt: function() {
    return this.getCreatedAt
  },
  getAuthor: function() {
    return this.author;
  },
  getRepliedTo: function() {
    return this.repliedTo
  },
  toString: function() {
    if(this.repliedTo){

    }else{
      return this.message + " by " + this.author.name
    }
  }
}
var user = new User ("dan")
var mod = new Moderator("Daniel")
var admin = new Admin ("Danny")
var com1 = new Comment(user, "hello")
var com2 = new Comment(mod, "hi")
var com3 = new Comment(admin, "yo", com3)