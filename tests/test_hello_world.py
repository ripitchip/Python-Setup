from src.main import main


def test_main() -> None:
    """Test the main function."""
    result = main()
    assert result == "Hello World!"
