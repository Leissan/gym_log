
// When the user submits the form, they'll be logged in! 
// Our onLogin callback function would handle saving the logged in user's details in state.

function Login({ onLogin }) {
    const [username, setUsername] = useState("");
  
    function handleSubmit(e) {
      e.preventDefault();
      fetch("/login", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ username }),
      })
        .then((r) => r.json())
        .then((user) => onLogin(user));
    }
  
    return (
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <button type="submit">Login</button>
      </form>
    );
  }

  // staying logged in:
  function App() {
    const [user, setUser] = useState(null);
  
    useEffect(() => {
      fetch("/me").then((response) => {
        if (response.ok) {
          response.json().then((user) => setUser(user));
        }
      });
    }, []);
  
    if (user) {
      return <h2>Welcome, {user.username}!</h2>;
    } else {
      return <Login onLogin={setUser} />;
    }
  }


  //logging out:
  function Navbar({ onLogout }) {
    function handleLogout() {
      fetch("/logout", {
        method: "DELETE",
      }).then(() => onLogout());
    }
  
    return (
      <header>
        <button onClick={handleLogout}>Logout</button>
      </header>
    );
  }