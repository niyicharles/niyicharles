class AddPageData < ActiveRecord::Migration
  def self.up
    Page.delete_all

    Page.create (
      :name => "home",
      :title => "Welcome to Niyi Charles Blog!",
      :body =>
      %{
        <h1>Niyi Charles Blog Home</h1>
      }
    )

    Page.create (
      :name => "radio",
      :title => "This is the central page for the Niyi Charles Radio!",
      :body =>
      %{
        <h1>Niyi Charles Radio Home</h1>
      }
    )

    Page.create (
      :name => "free_stuff",
      :title => "Freebies offered by Niyi Charles!",
      :body =>
      %{
        <h1>Niyi Charles Freebies Home</h1>
      }
    )

    Page.create (
      :name => "new_comers",
      :title => "Get to know the latest subscribers to our feeds and newsletters!",
      :body =>
      %{
        <h1>Niyi Charles New Comers Page</h1>
      }
    )

    Page.create (
      :name => "creators",
      :title => "Meet the crew behind Niyi Charles!",
      :body =>
      %{
        <h1>Niyi Charles Developers and Editors Lounge</h1>
      }
    )

    Page.create (
      :name => "hire_me",
      :title => "Opportunities available to Entrepreneurs and Professionals!",
      :body =>
      %{
        <h1>Niyi Charles Careers and Opportunities Page</h1>
      }
    )

    Page.create (
      :name => "connect",
      :title => "Meet with our subscribers and join our forum!",
      :body =>
      %{
        <h1>Subscribers and forum connections</h1>
      }
    )

    Page.create (
      :name => "products",
      :title => "Projects developed by Niyi Charles Group!",
      :body =>
      %{
        <h1>Some of our Projects</h1>
      }
    )

    Page.create (
      :name => "downloads",
      :title => "Free and paid downloads from Niyi Charles Website!",
      :body =>
      %{
        <h1>Get free downloads and see some inspiring premium offers</h1>
      }
    )

    Page.create (
      :name => "sponsors",
      :title => "Meet our sponsors or join them!",
      :body =>
      %{
        <h1>Become a sponsor</h1>
      }
    )

    Page.create (
      :name => "contact",
      :title => "Get in touch with the administrators and support of Niyi Charles Blog!",
      :body =>
      %{
        <h1>Reach us via phone, email, facebook, twitter and other options!</h1>
      }
    )
  end

  def self.down
    Page.delete_all
  end
end

