# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Featex.Repo.insert!(%Featex.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Featex.Repo

Repo.insert!(%Featex.Feature{
    key: "FEAT-6127",
    title: "Access-rights SCS-Features: allow only active roles",
    description: "As Product Owner I want that only active roles are taken into account when checking access-rights."
});

Repo.insert!(%Featex.Feature{
    key: "FEAT-4057",
    title: "Feature overview: add filtering",
    description: "As user who can access feature overview, I want to be able to filter columns of overview table."
});

Repo.insert!(%Featex.Feature{
    key: "FEAT-4056",
    title: "Feature overview: add sorting",
    description: "As user who can access feature overview, I want to be able to sort columns of overview table."
});

Repo.insert!(%Featex.Feature{
    key: "FEAT-4815",
    title: "Shared Lib: improve radio button",
    description: "As a user of Featex, I want all radio buttons to look like in the newest design templates."
});

Repo.insert!(%Featex.Feature{
    key: "FEAT-4808",
    title: "Shared Lib: improve checkbox",
    description: "As a user of Featex, I want all checkboxes to look like in the newest design templates."
});

Repo.insert!(%Featex.Feature{
    key: "FEAT-4086",
    title: "Due-date handling for features",
    description: "As user with role 'feature author' I want to see calculated due-dates for feature, in order to easily identify urgent features."
});
